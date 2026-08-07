.class public interface abstract annotation Lei/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lgi/F;
    value = {
        Lei/a;,
        Lei/c;,
        Lei/e;,
        Lei/l;,
        Lei/r;,
        Lei/m;,
        Lei/b;,
        Lei/h;,
        Lei/k;,
        Lei/i;,
        Lei/j;
    }
.end annotation

.annotation runtime Lgi/G;
    value = {
        .enum Lgi/I;->EXPLICIT_LOWER_BOUND:Lgi/I;,
        .enum Lgi/I;->EXPLICIT_UPPER_BOUND:Lgi/I;
    }
.end annotation

.annotation runtime Lgi/q;
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
