.class public Lye/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lze/p<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lye/o;


# direct methods
.method public constructor <init>(Lye/o;)V
    .locals 0

    iput-object p1, p0, Lye/o$a;->a:Lye/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(CLjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CTV;)Z"
        }
    .end annotation

    iget-object v0, p0, Lye/o$a;->a:Lye/o;

    invoke-virtual {v0, p1, p2}, Lye/o;->w4(CLjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method
