.class public Lye/O$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lze/Q<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lye/O;


# direct methods
.method public constructor <init>(Lye/O;)V
    .locals 0

    iput-object p1, p0, Lye/O$a;->a:Lye/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/O$a;->a:Lye/O;

    invoke-virtual {v0, p1, p2}, Lye/O;->Db(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
