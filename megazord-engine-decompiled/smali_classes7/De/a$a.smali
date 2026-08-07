.class public LDe/a$a;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDe/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Loe/e;

.field public final synthetic f:LDe/a;


# direct methods
.method public constructor <init>(LDe/a;Loe/e;)V
    .locals 0

    iput-object p1, p0, LDe/a$a;->f:LDe/a;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, LDe/a$a;->e:Loe/e;

    return-void
.end method


# virtual methods
.method public next()B
    .locals 2

    invoke-virtual {p0}, Loe/J;->j()V

    iget-object v0, p0, LDe/a$a;->e:Loe/e;

    iget-object v0, v0, Loe/e;->q:[B

    iget v1, p0, Loe/J;->d:I

    aget-byte v0, v0, v1

    return v0
.end method
