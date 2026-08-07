.class public interface abstract annotation Ld3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Ld3/k;
    modifier = {
        .enum Ld3/o;->PUBLIC:Ld3/o;,
        .enum Ld3/o;->PRIVATE:Ld3/o;,
        .enum Ld3/o;->STATIC:Ld3/o;,
        .enum Ld3/o;->FINAL:Ld3/o;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
