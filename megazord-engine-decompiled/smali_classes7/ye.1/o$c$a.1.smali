.class public Lye/o$c$a;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/o$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Loe/m;

.field public final synthetic f:Lye/o$c;


# direct methods
.method public constructor <init>(Lye/o$c;Loe/m;)V
    .locals 0

    iput-object p1, p0, Lye/o$c$a;->f:Lye/o$c;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, Lye/o$c$a;->e:Loe/m;

    return-void
.end method


# virtual methods
.method public next()C
    .locals 2

    invoke-virtual {p0}, Loe/J;->j()V

    iget-object v0, p0, Lye/o$c$a;->e:Loe/m;

    iget-object v0, v0, Loe/m;->q:[C

    iget v1, p0, Loe/J;->d:I

    aget-char v0, v0, v1

    return v0
.end method
