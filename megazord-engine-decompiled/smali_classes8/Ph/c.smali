.class public interface abstract annotation LPh/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LPh/c;
        value = -0x1
    .end subannotation
.end annotation

.annotation runtime Lgi/F;
    value = {
        LPh/f;
    }
.end annotation

.annotation runtime Lgi/G;
    value = {
        .enum Lgi/I;->RECEIVER:Lgi/I;,
        .enum Lgi/I;->PARAMETER:Lgi/I;,
        .enum Lgi/I;->RETURN:Lgi/I;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()I
.end method
