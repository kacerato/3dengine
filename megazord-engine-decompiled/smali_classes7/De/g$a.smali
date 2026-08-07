.class public LDe/g$a;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/Q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDe/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Loe/O;

.field public final synthetic f:LDe/g;


# direct methods
.method public constructor <init>(LDe/g;Loe/O;)V
    .locals 0

    iput-object p1, p0, LDe/g$a;->f:LDe/g;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, LDe/g$a;->e:Loe/O;

    return-void
.end method


# virtual methods
.method public next()I
    .locals 2

    invoke-virtual {p0}, Loe/J;->j()V

    iget-object v0, p0, LDe/g$a;->e:Loe/O;

    iget-object v0, v0, Loe/O;->q:[I

    iget v1, p0, Loe/J;->d:I

    aget v0, v0, v1

    return v0
.end method
