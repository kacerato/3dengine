.class public LAb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LUb/f;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LUb/f;

    invoke-direct {v0}, LUb/f;-><init>()V

    iput-object v0, p0, LAb/b;->a:LUb/f;

    const/4 v0, -0x1

    iput v0, p0, LAb/b;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, LAb/b;->b:I

    return-void
.end method
