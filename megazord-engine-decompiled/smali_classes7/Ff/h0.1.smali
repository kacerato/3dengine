.class public interface abstract annotation LFf/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LFf/l0;
    version = "1.3"
.end annotation

.annotation runtime LGf/e;
    value = .enum LGf/a;->BINARY:LGf/a;
.end annotation

.annotation runtime LGf/f;
    allowedTargets = {
        .enum LGf/b;->ANNOTATION_CLASS:LGf/b;
    }
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LFf/h0;
        level = .enum LFf/h0$a;->ERROR:LFf/h0$a;
        message = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFf/h0$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract level()LFf/h0$a;
.end method

.method public abstract message()Ljava/lang/String;
.end method
