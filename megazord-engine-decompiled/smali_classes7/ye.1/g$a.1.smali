.class public Lye/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lze/g<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lye/g;


# direct methods
.method public constructor <init>(Lye/g;)V
    .locals 0

    iput-object p1, p0, Lye/g$a;->a:Lye/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(BLjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/g$a;->a:Lye/g;

    invoke-virtual {v0, p1, p2}, Lye/g;->r5(BLjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
