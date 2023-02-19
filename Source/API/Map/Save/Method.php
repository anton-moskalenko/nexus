<?php

namespace Liloi\Rune\API\Map\Save;

use Liloi\API\Response;
use Liloi\Rune\API\Method as SuperMethod;
use Liloi\Rune\Engine\Domain\Map\Entity;

class Method extends SuperMethod
{
    public static function execute(): Response
    {
        $map = Entity::getCurrent();

        $map->setTitle(self::getParameter('title'));
        $map->setProgram(self::getParameter('program'));
        $map->save();

        return new Response();
    }
}