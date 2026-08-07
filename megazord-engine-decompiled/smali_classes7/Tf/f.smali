.class public interface abstract annotation LTf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LFf/f0;
.end annotation

.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation runtime LGf/f;
    allowedTargets = {
        .enum LGf/b;->CLASS:LGf/b;
    }
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LTf/f;
        c = ""
        f = ""
        i = {}
        l = {}
        m = ""
        n = {}
        nl = {}
        s = {}
        v = 0x2
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LTf/f$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract c()Ljava/lang/String;
    .annotation build Ldg/j;
        name = "c"
    .end annotation
.end method

.method public abstract f()Ljava/lang/String;
    .annotation build Ldg/j;
        name = "f"
    .end annotation
.end method

.method public abstract i()[I
    .annotation build Ldg/j;
        name = "i"
    .end annotation
.end method

.method public abstract l()[I
    .annotation build Ldg/j;
        name = "l"
    .end annotation
.end method

.method public abstract m()Ljava/lang/String;
    .annotation build Ldg/j;
        name = "m"
    .end annotation
.end method

.method public abstract n()[Ljava/lang/String;
    .annotation build Ldg/j;
        name = "n"
    .end annotation
.end method

.method public abstract nl()[I
    .annotation build Ldg/j;
        name = "nl"
    .end annotation
.end method

.method public abstract s()[Ljava/lang/String;
    .annotation build Ldg/j;
        name = "s"
    .end annotation
.end method

.method public abstract v()I
    .annotation build Ldg/j;
        name = "v"
    .end annotation
.end method
