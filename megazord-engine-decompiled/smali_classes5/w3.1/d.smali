.class public interface abstract annotation Lw3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lw3/d;
        intEncoding = .enum Lw3/d$a;->DEFAULT:Lw3/d$a;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/d$a;
    }
.end annotation

.annotation runtime Lt3/b;
.end annotation


# virtual methods
.method public abstract intEncoding()Lw3/d$a;
.end method

.method public abstract tag()I
.end method
