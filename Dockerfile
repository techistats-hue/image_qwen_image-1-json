# clean base image containing only comfyui, comfy-cli and comfyui-manager
FROM runpod/worker-comfyui:5.5.1-base

# install custom nodes into comfyui (first node with --mode remote to fetch updated cache)
# The workflow lists unknown_registry custom nodes but none include a GitHub aux_id or a registry ID,
# so they cannot be installed automatically. Skipping these nodes with explanatory comments below.
# Skipping unknown_registry node: MarkdownNote (no aux_id found)
# Skipping unknown_registry node: MarkdownNote (no aux_id found)
# Skipping unknown_registry node: e5cfe5ba-2ae0-4bc4-869f-ab2228cb44d3 (no aux_id found)

# download models into comfyui
# No models specified in the workflow

# copy all input data (like images or videos) into comfyui (uncomment and adjust if needed)
# COPY input/ /comfyui/input/
