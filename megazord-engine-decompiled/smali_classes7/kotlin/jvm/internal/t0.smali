.class public interface abstract annotation Lkotlin/jvm/internal/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LFf/l0;
    version = "1.8"
.end annotation

.annotation runtime LGf/e;
    value = .enum LGf/a;->BINARY:LGf/a;
.end annotation

.annotation runtime LGf/f;
    allowedTargets = {
        .enum LGf/b;->CLASS:LGf/b;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract value()[Ljava/lang/String;
.end method
