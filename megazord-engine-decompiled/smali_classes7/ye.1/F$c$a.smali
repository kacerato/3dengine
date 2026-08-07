.class public Lye/F$c$a;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/H;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/F$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Loe/D;

.field public final synthetic f:Lye/F$c;


# direct methods
.method public constructor <init>(Lye/F$c;Loe/D;)V
    .locals 0

    iput-object p1, p0, Lye/F$c$a;->f:Lye/F$c;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, Lye/F$c$a;->e:Loe/D;

    return-void
.end method


# virtual methods
.method public next()F
    .locals 2

    invoke-virtual {p0}, Loe/J;->j()V

    iget-object v0, p0, Lye/F$c$a;->e:Loe/D;

    iget-object v0, v0, Loe/D;->q:[F

    iget v1, p0, Loe/J;->d:I

    aget v0, v0, v1

    return v0
.end method
