.class public LKa/J$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKa/J$k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LKa/J;->m(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;)LMb/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LKa/J$k<",
        "LMb/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Material/Material;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$material"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LKa/J$b;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)LMb/p;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    iget-object v0, p0, LKa/J$b;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->G(Ljava/lang/String;)LMb/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "alias"
        }
    .end annotation

    invoke-virtual {p0, p1}, LKa/J$b;->a(Ljava/lang/String;)LMb/p;

    move-result-object p1

    return-object p1
.end method
