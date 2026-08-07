.class public Lcom/itsmagic/engine/Core/Components/GIAP/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Core/Components/GIAP/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->e:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic c(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;F)F
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->f:F

    return p1
.end method

.method public static synthetic d(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->c:I

    return p1
.end method

.method public static synthetic f(Lcom/itsmagic/engine/Core/Components/GIAP/b$b;I)I
    .locals 0

    iput p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->d:I

    return p1
.end method


# virtual methods
.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->c:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()F
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->f:F

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/b$b;->d:I

    return v0
.end method
