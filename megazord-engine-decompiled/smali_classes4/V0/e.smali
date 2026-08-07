.class public final LV0/e;
.super LV0/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1, p2}, LV0/a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic k(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 p1, 0x0

    invoke-static {p1}, LX0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, LV0/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    throw p1
.end method
