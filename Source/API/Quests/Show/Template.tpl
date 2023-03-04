<style>
    #table-road
    {
        width: 100%;
        border-collapse: collapse;
    }

    .road
    {
        background-image: url("/vendor/anton-moskalenko/nexus/Pool/Images/Road.png");
        width: 200px;
        height: 58px;
        background-size: 30%;
    }
</style>
<table id="table-road">

    <?php foreach($group as $key_dt => $collection): ?>
        <?php foreach($collection as $entity): ?>

            <?php if($entity->isVirtual()): ?>
                <tr>
                    <td></td>
                    <td style="text-align: right;">
                        <?php if($entity->getVirtual('time') % 3 == 0): ?>
                            <img src="/vendor/anton-moskalenko/nexus/Pool/Images/Milestone.png" alt="<?php echo $key_dt; ?>" width="30" />
                        <?php endif; ?>
                    </td>
                    <td class="road"></td>
                    <td></td>
                    <td style="text-align: right;">
                    </td>
                </tr>
            <?php else: ?>
                <tr>
                    <td></td>
                    <td></td>
                    <td class="road"></td>
                    <td><?php echo $entity->getTitle(); ?></td>
                    <td style="text-align: right;">
                        <a href="javascript:void(0)" onclick="API.Quests.edit(<?php echo $entity->getKey(); ?>);">Edit</a> &diams;
                        <a href="javascript:void(0)" onclick="API.Quests.remove(<?php echo $entity->getKey(); ?>);">Remove</a>
                    </td>
                </tr>
            <?php endif; ?>

        <?php endforeach; ?>
    <?php endforeach; ?>
</table>