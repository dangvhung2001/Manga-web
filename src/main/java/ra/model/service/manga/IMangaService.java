package ra.model.service.manga;

import ra.model.enity.Manga;
import ra.model.service.IService;
import java.util.List;

public interface IMangaService extends IService<Manga,Integer> {
    List<Manga> findByName(String nameManga);

}
