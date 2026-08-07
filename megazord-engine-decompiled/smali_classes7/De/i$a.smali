.class public LDe/i$a;
.super Loe/J;
.source "SourceFile"

# interfaces
.implements Lre/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDe/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final e:Loe/X;

.field public final synthetic f:LDe/i;


# direct methods
.method public constructor <init>(LDe/i;Loe/X;)V
    .locals 0

    iput-object p1, p0, LDe/i$a;->f:LDe/i;

    invoke-direct {p0, p2}, Loe/J;-><init>(Loe/c0;)V

    iput-object p2, p0, LDe/i$a;->e:Loe/X;

    return-void
.end method


# virtual methods
.method public next()J
    .locals 3

    invoke-virtual {p0}, Loe/J;->j()V

    iget-object v0, p0, LDe/i$a;->e:Loe/X;

    iget-object v0, v0, Loe/X;->q:[J

    iget v1, p0, Loe/J;->d:I

    aget-wide v1, v0, v1

    return-wide v1
.end method
