.class public interface abstract annotation LVh/b;
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
        .enum Lgi/H;->FLOAT:Lgi/H;,
        .enum Lgi/H;->DOUBLE:Lgi/H;
    }
    types = {
        Ljava/lang/Float;,
        Ljava/lang/Double;
    }
.end annotation

.annotation runtime Lgi/e;
    typeKinds = {
        .enum Lgi/H;->BYTE:Lgi/H;,
        .enum Lgi/H;->INT:Lgi/H;,
        .enum Lgi/H;->LONG:Lgi/H;,
        .enum Lgi/H;->SHORT:Lgi/H;,
        .enum Lgi/H;->FLOAT:Lgi/H;,
        .enum Lgi/H;->DOUBLE:Lgi/H;
    }
    types = {
        Ljava/lang/Byte;,
        Ljava/lang/Integer;,
        Ljava/lang/Long;,
        Ljava/lang/Short;,
        Ljava/lang/Float;,
        Ljava/lang/Double;
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
