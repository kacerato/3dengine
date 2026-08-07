.class public interface abstract annotation LFf/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation runtime LGf/e;
    value = .enum LGf/a;->RUNTIME:LGf/a;
.end annotation

.annotation runtime LGf/f;
    allowedTargets = {
        .enum LGf/b;->CLASS:LGf/b;
    }
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LFf/N;
        bv = {
            0x1,
            0x0,
            0x3
        }
        d1 = {}
        d2 = {}
        k = 0x1
        mv = {}
        pn = ""
        xi = 0x0
        xs = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFf/N$a;
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
.method public abstract bv()[I
    .annotation build Ldg/j;
        name = "bv"
    .end annotation
.end method

.method public abstract d1()[Ljava/lang/String;
    .annotation build Ldg/j;
        name = "d1"
    .end annotation
.end method

.method public abstract d2()[Ljava/lang/String;
    .annotation build Ldg/j;
        name = "d2"
    .end annotation
.end method

.method public abstract k()I
    .annotation build Ldg/j;
        name = "k"
    .end annotation
.end method

.method public abstract mv()[I
    .annotation build Ldg/j;
        name = "mv"
    .end annotation
.end method

.method public abstract pn()Ljava/lang/String;
    .annotation build Ldg/j;
        name = "pn"
    .end annotation
.end method

.method public abstract xi()I
    .annotation build Ldg/j;
        name = "xi"
    .end annotation
.end method

.method public abstract xs()Ljava/lang/String;
    .annotation build Ldg/j;
        name = "xs"
    .end annotation
.end method
