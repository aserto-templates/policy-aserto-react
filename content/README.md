# policy-aserto-react

A policy for Aserto's node + react quickstart, referred to in the [docs](https://docs.aserto.com/docs/quickstarts/react/overview) and in this blog [post](https://www.aserto.com/blog).

## Directory structure

`src` contains all the policy files.

`src/.manifest` contains the policy roots - in this case, `asertodemo` and `roles`. If you change the name of the `package` definitions in the `.rego` files, make sure that the first component of the package name is reflected in this list.

`src/policies` contains the policy modules associated with the react sample:

* asertodemo.GET.api.protected - policy for `GET /api/protected`

## Releasing a new version

`git tag {version} && git push --tags` will invoke the actions to create a new release (a policy bundle that can be delivered to the Aserto authorizer)

e.g. `git tag v0.0.1 && git push --tags` will create a new release with v0.0.1.
