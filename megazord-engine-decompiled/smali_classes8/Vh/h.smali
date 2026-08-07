.class public interface abstract annotation LVh/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lgi/F;
    value = {
        LVh/g;
    }
.end annotation

.annotation runtime Lgi/K;
    typeKinds = {
        .enum Lgi/H;->CHAR:Lgi/H;
    }
    types = {
        Ljava/lang/Character;
    }
.end annotation

.annotation runtime Lgi/e;
    typeKinds = {
        .enum Lgi/H;->CHAR:Lgi/H;
    }
    types = {
        Ljava/lang/Character;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
