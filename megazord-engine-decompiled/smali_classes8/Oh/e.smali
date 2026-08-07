.class public interface abstract annotation LOh/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lgi/B;
    value = {
        .enum Lgi/s;->PRIMITIVE:Lgi/s;,
        .enum Lgi/s;->STRING:Lgi/s;
    }
.end annotation

.annotation runtime Lgi/F;
    value = {
        LOh/h;
    }
.end annotation

.annotation runtime Lgi/e;
    typeKinds = {
        .enum Lgi/H;->BOOLEAN:Lgi/H;,
        .enum Lgi/H;->BYTE:Lgi/H;,
        .enum Lgi/H;->CHAR:Lgi/H;,
        .enum Lgi/H;->DOUBLE:Lgi/H;,
        .enum Lgi/H;->FLOAT:Lgi/H;,
        .enum Lgi/H;->INT:Lgi/H;,
        .enum Lgi/H;->LONG:Lgi/H;,
        .enum Lgi/H;->SHORT:Lgi/H;
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
