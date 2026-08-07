.class public LDe/j$a;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDe/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Loe/h0;

.field public final synthetic f:LDe/j;


# direct methods
.method public constructor <init>(LDe/j;Loe/h0;)V
    .locals 0

    iput-object p1, p0, LDe/j$a;->f:LDe/j;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, LDe/j$a;->e:Loe/h0;

    return-void
.end method


# virtual methods
.method public next()S
    .locals 2

    invoke-virtual {p0}, Loe/J;->j()V

    iget-object v0, p0, LDe/j$a;->e:Loe/h0;

    iget-object v0, v0, Loe/h0;->q:[S

    iget v1, p0, Loe/J;->d:I

    aget-short v0, v0, v1

    return v0
.end method
