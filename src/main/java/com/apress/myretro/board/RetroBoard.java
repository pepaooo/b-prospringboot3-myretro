package com.apress.myretro.board;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Builder;
import lombok.Data;
import lombok.Singular;

import java.util.List;
import java.util.UUID;

@Builder
@Data
public class RetroBoard {

    private UUID id;

    @NotNull
    @NotBlank (message = "Name cannot be blank")
    private String name;

    @Singular
    private List<Card> cards;
}
