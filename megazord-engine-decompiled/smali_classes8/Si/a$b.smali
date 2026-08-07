.class public LSi/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[F

.field public final b:[F

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [F

    iput-object v1, p0, LSi/a$b;->a:[F

    .line 3
    new-array v0, v0, [F

    iput-object v0, p0, LSi/a$b;->b:[F

    return-void
.end method

.method public synthetic constructor <init>(LSi/a$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, LSi/a$b;-><init>()V

    return-void
.end method

.method public static synthetic a(LSi/a$b;)[F
    .locals 0

    iget-object p0, p0, LSi/a$b;->a:[F

    return-object p0
.end method

.method public static synthetic b(LSi/a$b;)[F
    .locals 0

    iget-object p0, p0, LSi/a$b;->b:[F

    return-object p0
.end method

.method public static synthetic c(LSi/a$b;)I
    .locals 0

    iget p0, p0, LSi/a$b;->c:I

    return p0
.end method

.method public static synthetic d(LSi/a$b;I)I
    .locals 0

    iput p1, p0, LSi/a$b;->c:I

    return p1
.end method
