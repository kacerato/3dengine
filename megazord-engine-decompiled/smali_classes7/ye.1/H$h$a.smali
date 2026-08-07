.class public Lye/H$h$a;
.super Lse/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lye/H$h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic g:Lye/H$h;


# direct methods
.method public constructor <init>(Lye/H$h;Loe/b0;)V
    .locals 0

    iput-object p1, p0, Lye/H$h$a;->g:Lye/H$h;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    return-void
.end method


# virtual methods
.method public k(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v0, p0, Lye/H$h$a;->g:Lye/H$h;

    iget-object v0, v0, Lye/H$h;->c:Lye/H;

    iget-object v0, v0, Lye/H;->q:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
