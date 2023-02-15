flash_light[| eLight.Range] = max(flash_light[| eLight.Range] - 50, 1);
flash_light[| eLight.Flags] |= eLightFlags.Dirty;