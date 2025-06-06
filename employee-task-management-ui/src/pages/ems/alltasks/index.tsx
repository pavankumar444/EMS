import { Layout } from '@/components/custom/layout'
import { Search } from '@/components/search'
import ThemeSwitch from '@/components/theme-switch'

import { useQuery } from '@tanstack/react-query'
import { emsGetAllTasks } from '@/http/api'

import DepartmentsTable from '@/components/departments-table'
import { useAuth, useEmsAuth } from '@/hooks/use-auth'
import TaskTable from './components/task-table'
import { UserNav } from '../components/user-nav'
import EmployeeSearch from '../components/employee-search'

export default function AllTasks() {
    const {user} = useEmsAuth()
    console.log('user', user)
    const payload = { organization_id: user.organization_id }

    const {
      data: tasksResponse,
      isLoading,
      error,
    } = useQuery({
      queryKey: ['ems_tasks'],
      queryFn: () => emsGetAllTasks(payload),
    })
    const tasksList = tasksResponse?.data || []
    console.log('tasks', tasksList)
  return (
    <Layout>
      {/* ===== Top Heading ===== */}
      <Layout.Header sticky>
        <div className='ml-auto flex items-center space-x-4'>
          <EmployeeSearch />
          <ThemeSwitch />
          <UserNav />
        </div>
      </Layout.Header>

      <Layout.Body>
        <div className='mb-2 flex items-center justify-between space-y-2'>
          <div>
            <h2 className='text-2xl font-bold tracking-tight'>All Tasks</h2>
            <p className='text-muted-foreground'>View all tasks</p>
          </div>
        </div>
        <div className='-mx-4 flex-1 overflow-auto px-4 py-1 lg:flex-row lg:space-x-12 lg:space-y-0'>
          <TaskTable tasksList={tasksList} />
        </div>
      </Layout.Body>
    </Layout>
  )
}
