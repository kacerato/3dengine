.class public final Lye/H$c$a;
.super Lse/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/H$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic g:Lye/H$c;


# direct methods
.method public constructor <init>(Lye/H$c;Lye/H;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lye/H<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lye/H$c$a;->g:Lye/H$c;

    invoke-direct {p0, p2}, Lse/a;-><init>(Loe/b0;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic k(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lye/H$c$a;->l(I)Lye/H$b;

    move-result-object p1

    return-object p1
.end method

.method public l(I)Lye/H$b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lye/H<",
            "TK;TV;>.b;"
        }
    .end annotation

    new-instance v0, Lye/H$b;

    iget-object v1, p0, Lye/H$c$a;->g:Lye/H$c;

    iget-object v1, v1, Lye/H$c;->c:Lye/H;

    iget-object v2, v1, Loe/b0;->l:[Ljava/lang/Object;

    aget-object v2, v2, p1

    iget-object v3, v1, Lye/H;->q:[Ljava/lang/Object;

    aget-object v3, v3, p1

    invoke-direct {v0, v1, v2, v3, p1}, Lye/H$b;-><init>(Lye/H;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v0
.end method
