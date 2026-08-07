.class public interface abstract annotation LPh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LPh/d;
        value = {}
    .end subannotation
.end annotation

.annotation runtime Lgi/F;
    value = {
        LPh/f;
    }
.end annotation

.annotation runtime Lgi/K;
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
    types = {
        Ljava/lang/String;
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
    types = {
        Ljava/lang/String;,
        Ljava/lang/Void;
    }
    value = {
        .enum Lgi/I;->EXCEPTION_PARAMETER:Lgi/I;,
        .enum Lgi/I;->UPPER_BOUND:Lgi/I;
    }
.end annotation

.annotation runtime Lgi/h;
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


# virtual methods
.method public abstract value()[Ljava/lang/String;
    .annotation runtime Lgi/r;
    .end annotation
.end method
