import { Layout } from '@/components/custom/layout'
import { Search } from '@/components/search'
import ThemeSwitch from '@/components/theme-switch'

import { DataTable } from './components/data-table'
import { columns } from './components/columns'
import { tasks } from './data/tasks'
import { useQuery } from '@tanstack/react-query'
import { emsGetAllEmployees, getAllEmployees } from '@/http/api'

import { UserNav } from '../components/user-nav'
import { useEmsAuth } from '@/hooks/use-auth'
import EmployeeSearch from '../components/employee-search'

export default function Employees() {
  const { user } = useEmsAuth()
  const payload = { organization_id: user.organization_id }
  const {
    data: employeesResponse,
    isLoading,
    error,
  } = useQuery({
    queryKey: ['ems_employees'],
    queryFn: () => emsGetAllEmployees(payload),
  })
  const employees = employeesResponse?.data || []
  console.log(employees)
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
            <h2 className='text-2xl font-bold tracking-tight'>Employee</h2>
            <p className='text-muted-foreground'>Manage employees</p>
          </div>
        </div>
        <div className='-mx-4 flex-1 overflow-auto px-4 py-1 lg:flex-row lg:space-x-12 lg:space-y-0'>
          <DataTable data={employees} columns={columns} />
        </div>
      </Layout.Body>
    </Layout>
  )
}
