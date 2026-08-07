.class public interface abstract annotation LWf/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime LGf/e;
    value = .enum LGf/a;->SOURCE:LGf/a;
.end annotation

.annotation runtime LGf/f;
    allowedTargets = {
        .enum LGf/b;->CLASS:LGf/b;,
        .enum LGf/b;->FUNCTION:LGf/b;,
        .enum LGf/b;->PROPERTY:LGf/b;,
        .enum LGf/b;->CONSTRUCTOR:LGf/b;,
        .enum LGf/b;->TYPEALIAS:LGf/b;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LWf/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/jvm/internal/p0;
.end annotation


# virtual methods
.method public abstract value()[LWf/q;
.end method
