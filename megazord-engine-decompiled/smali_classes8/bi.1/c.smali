.class public interface abstract annotation Lbi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lgi/B;
    value = {
        .enum Lgi/s;->NULL:Lgi/s;
    }
.end annotation

.annotation runtime Lgi/F;
    value = {}
.end annotation

.annotation runtime Lgi/e;
    value = {
        .enum Lgi/I;->LOWER_BOUND:Lgi/I;
    }
.end annotation

.annotation runtime Lgi/h;
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
