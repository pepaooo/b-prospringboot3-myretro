package com.apress.myretro.persistence;

import java.util.Optional;

public interface SimpleRepository<D, ID> {
    Optional<D> findById(ID id);
    Iterable<D> findAll();
    D save(D d);
    void deleteById(ID id);
}
