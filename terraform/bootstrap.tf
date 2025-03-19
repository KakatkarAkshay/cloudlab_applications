resource "flux_bootstrap_git" "triton" {
  embedded_manifests = true
  path               = "clusters/triton"

  provider   = flux.triton
  depends_on = [github_repository.flux_repo]
}

resource "flux_bootstrap_git" "scorpion" {
  embedded_manifests = true
  path               = "clusters/scorpion"

  provider   = flux.scorpion
  depends_on = [flux_bootstrap_git.triton]
}
