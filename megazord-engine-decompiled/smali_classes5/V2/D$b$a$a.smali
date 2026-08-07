.class public LV2/D$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/D$b$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LR2/t<",
        "LV2/u<",
        "TN;>;",
        "LV2/u<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LV2/D$b$a;


# direct methods
.method public constructor <init>(LV2/D$b$a;)V
    .locals 0

    iput-object p1, p0, LV2/D$b$a$a;->b:LV2/D$b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LV2/u;)LV2/u;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LV2/u<",
            "TN;>;)",
            "LV2/u<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/D$b$a$a;->b:LV2/D$b$a;

    iget-object v0, v0, LV2/D$b$a;->d:LV2/D$b;

    invoke-virtual {v0}, LV2/D$b;->S()LV2/z;

    move-result-object v0

    invoke-virtual {p1}, LV2/u;->i()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, LV2/u;->h()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, LV2/u;->j(LV2/z;Ljava/lang/Object;Ljava/lang/Object;)LV2/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LV2/u;

    invoke-virtual {p0, p1}, LV2/D$b$a$a;->a(LV2/u;)LV2/u;

    move-result-object p1

    return-object p1
.end method
