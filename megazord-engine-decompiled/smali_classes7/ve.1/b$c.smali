.class public Lve/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:C

.field public b:Lve/b$c;

.field public c:Lve/b$c;


# direct methods
.method public constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lve/b$c;->a:C

    return-void
.end method


# virtual methods
.method public a()Lve/b$c;
    .locals 1

    iget-object v0, p0, Lve/b$c;->c:Lve/b$c;

    return-object v0
.end method

.method public b()Lve/b$c;
    .locals 1

    iget-object v0, p0, Lve/b$c;->b:Lve/b$c;

    return-object v0
.end method

.method public c()C
    .locals 1

    iget-char v0, p0, Lve/b$c;->a:C

    return v0
.end method

.method public d(Lve/b$c;)V
    .locals 0

    iput-object p1, p0, Lve/b$c;->c:Lve/b$c;

    return-void
.end method

.method public e(Lve/b$c;)V
    .locals 0

    iput-object p1, p0, Lve/b$c;->b:Lve/b$c;

    return-void
.end method

.method public f(C)V
    .locals 0

    iput-char p1, p0, Lve/b$c;->a:C

    return-void
.end method
