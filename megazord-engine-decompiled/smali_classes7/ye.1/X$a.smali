.class public Lye/X$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/a0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/X;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lze/a0<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lye/X;


# direct methods
.method public constructor <init>(Lye/X;)V
    .locals 0

    iput-object p1, p0, Lye/X$a;->a:Lye/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/X$a;->a:Lye/X;

    invoke-virtual {v0, p1, p2, p3}, Lye/X;->cb(JLjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
