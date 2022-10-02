package com.itProger.practice.shop.models;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER, ADMINISTRATOR, MODERATOR;

    @Override
    public String getAuthority() {
        return name();
    }
}
