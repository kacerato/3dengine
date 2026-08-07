.class public LV2/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LV2/h;->N(Ljava/lang/Object;Ljava/lang/Object;)LR2/I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LR2/I<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:LV2/h;


# direct methods
.method public constructor <init>(LV2/h;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LV2/h$b;->d:LV2/h;

    iput-object p2, p0, LV2/h$b;->b:Ljava/lang/Object;

    iput-object p3, p0, LV2/h$b;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, LV2/h$b;->d:LV2/h;

    invoke-interface {v0, p1}, LV2/T;->F(Ljava/lang/Object;)LV2/u;

    move-result-object p1

    iget-object v0, p0, LV2/h$b;->b:Ljava/lang/Object;

    invoke-virtual {p1, v0}, LV2/u;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LV2/h$b;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
