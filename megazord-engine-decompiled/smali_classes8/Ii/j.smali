.class public LIi/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:I = 0x8


# instance fields
.field public final a:I

.field public final b:[F

.field public final c:[F

.field public d:[LIi/g;

.field public e:[LIi/g;

.field public f:LIi/i;

.field public g:LIi/i;

.field public h:LIi/u;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    iput v0, p0, LIi/j;->a:I

    const/16 v0, 0x18

    new-array v1, v0, [F

    iput-object v1, p0, LIi/j;->b:[F

    new-array v0, v0, [F

    iput-object v0, p0, LIi/j;->c:[F

    return-void
.end method
