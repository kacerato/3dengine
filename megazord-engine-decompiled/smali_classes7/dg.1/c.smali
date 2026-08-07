.class public interface abstract annotation Ldg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LFf/l0;
    version = "1.2"
.end annotation

.annotation runtime LFf/o;
    level = .enum LFf/q;->HIDDEN:LFf/q;
    message = "Switch to new -jvm-default modes: `enable` or `no-compatibility`"
.end annotation

.annotation runtime LGf/f;
    allowedTargets = {
        .enum LGf/b;->FUNCTION:LGf/b;,
        .enum LGf/b;->PROPERTY:LGf/b;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
