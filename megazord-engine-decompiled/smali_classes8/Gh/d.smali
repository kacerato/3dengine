.class public interface abstract annotation LGh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lgi/x;
    qualifier = LGh/a;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract methods()[Ljava/lang/String;
    .annotation runtime Lgi/A;
        value = "value"
    .end annotation
.end method

.method public abstract value()[Ljava/lang/String;
.end method
