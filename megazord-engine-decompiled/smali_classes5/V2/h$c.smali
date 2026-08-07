.class public LV2/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/h;->O(LV2/T;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LR2/t<",
        "TE;",
        "LV2/u<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LV2/T;


# direct methods
.method public constructor <init>(LV2/T;)V
    .locals 0

    iput-object p1, p0, LV2/h$c;->b:LV2/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LV2/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "LV2/u<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LV2/h$c;->b:LV2/T;

    invoke-interface {v0, p1}, LV2/T;->F(Ljava/lang/Object;)LV2/u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LV2/h$c;->a(Ljava/lang/Object;)LV2/u;

    move-result-object p1

    return-object p1
.end method
