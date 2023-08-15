'use client'

export default function Error(props: { error: any }) {
  return (
    <div className="p-10">
      <div className="rounded-md bg-red-50 px-6 py-4 text-md text-red-700 space-y-2">
        <h3 className="font-medium text-red-800">
          Error connecting to y-sweet server
        </h3>
        <p>{props.error.message}</p>
      </div>
    </div>
  )
}
