// Test for GraphQL fields with illegal ReScript names (starting with uppercase)
// The field "SSN" should have @as("SSN") annotation with field name _SSN

@genType
module IllegalNameQuery = %graphql(`
  query IllegalNameQuery {
    variousScalars {
      SSN
    }
  }
`)

let getSsn = (data: IllegalNameQuery.t) => {
  data.variousScalars._SSN
}
