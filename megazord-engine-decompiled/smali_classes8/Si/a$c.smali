.class public LSi/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:[F

.field public final b:[F

.field public c:I

.field public d:Lcom/itsmagic/engine/Engines/Native/Base/NativeIntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, LSi/a$c;->a:[F

    new-array v0, v0, [F

    iput-object v0, p0, LSi/a$c;->b:[F

    return-void
.end method

.method public static synthetic a(LSi/a$c;)[F
    .locals 0

    iget-object p0, p0, LSi/a$c;->a:[F

    return-object p0
.end method

.method public static synthetic b(LSi/a$c;)[F
    .locals 0

    iget-object p0, p0, LSi/a$c;->b:[F

    return-object p0
.end method

.method public static synthetic c(LSi/a$c;)I
    .locals 0

    iget p0, p0, LSi/a$c;->c:I

    return p0
.end method

.method public static synthetic d(LSi/a$c;I)I
    .locals 0

    iput p1, p0, LSi/a$c;->c:I

    return p1
.end method
