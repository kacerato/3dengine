.class public LMi/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:I = 0x54534554

.field public static final g:I = 0x1

.field public static final h:I = 0x8801


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:LEi/y;

.field public e:LLi/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LEi/y;

    invoke-direct {v0}, LEi/y;-><init>()V

    iput-object v0, p0, LMi/d;->d:LEi/y;

    new-instance v0, LLi/p;

    invoke-direct {v0}, LLi/p;-><init>()V

    iput-object v0, p0, LMi/d;->e:LLi/p;

    return-void
.end method
