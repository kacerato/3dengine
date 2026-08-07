.class public LKa/J$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LKa/J$l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LKa/J;->x(Lcom/itsmagic/engine/Engines/Engine/Material/Material;[Ljava/lang/String;[Ljava/lang/String;LMb/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LKa/J$l<",
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

    iput-object p1, p0, LKa/J$c;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "alias",
            "value"
        }
    .end annotation

    check-cast p2, LMb/p;

    invoke-virtual {p0, p1, p2}, LKa/J$c;->b(Ljava/lang/String;LMb/p;)V

    return-void
.end method

.method public b(Ljava/lang/String;LMb/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alias",
            "value"
        }
    .end annotation

    iget-object v0, p0, LKa/J$c;->a:Lcom/itsmagic/engine/Engines/Engine/Material/Material;

    invoke-virtual {v0, p1, p2}, Lcom/itsmagic/engine/Engines/Engine/Material/Material;->r0(Ljava/lang/String;LMb/p;)V

    return-void
.end method
