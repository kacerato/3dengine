.class public Lve/h$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:S

.field public b:Lve/h$c;

.field public c:Lve/h$c;


# direct methods
.method public constructor <init>(S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lve/h$c;->a:S

    return-void
.end method


# virtual methods
.method public a()Lve/h$c;
    .locals 1

    iget-object v0, p0, Lve/h$c;->c:Lve/h$c;

    return-object v0
.end method

.method public b()Lve/h$c;
    .locals 1

    iget-object v0, p0, Lve/h$c;->b:Lve/h$c;

    return-object v0
.end method

.method public c()S
    .locals 1

    iget-short v0, p0, Lve/h$c;->a:S

    return v0
.end method

.method public d(Lve/h$c;)V
    .locals 0

    iput-object p1, p0, Lve/h$c;->c:Lve/h$c;

    return-void
.end method

.method public e(Lve/h$c;)V
    .locals 0

    iput-object p1, p0, Lve/h$c;->b:Lve/h$c;

    return-void
.end method

.method public f(S)V
    .locals 0

    iput-short p1, p0, Lve/h$c;->a:S

    return-void
.end method
