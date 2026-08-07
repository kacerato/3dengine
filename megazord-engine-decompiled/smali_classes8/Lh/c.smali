.class public interface abstract annotation LLh/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lgi/B;
    value = {
        .enum Lgi/s;->INT:Lgi/s;,
        .enum Lgi/s;->LONG:Lgi/s;,
        .enum Lgi/s;->FLOAT:Lgi/s;,
        .enum Lgi/s;->DOUBLE:Lgi/s;,
        .enum Lgi/s;->BOOLEAN:Lgi/s;
    }
.end annotation

.annotation runtime Lgi/F;
    value = {
        LLh/e;
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
