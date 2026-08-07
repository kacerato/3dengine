.class public LDe/d$a;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Loe/v;

.field public final synthetic f:LDe/d;


# direct methods
.method public constructor <init>(LDe/d;Loe/v;)V
    .locals 0

    iput-object p1, p0, LDe/d$a;->f:LDe/d;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, LDe/d$a;->e:Loe/v;

    return-void
.end method


# virtual methods
.method public next()D
    .locals 3

    invoke-virtual {p0}, Loe/J;->j()V

    iget-object v0, p0, LDe/d$a;->e:Loe/v;

    iget-object v0, v0, Loe/v;->q:[D

    iget v1, p0, Loe/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
