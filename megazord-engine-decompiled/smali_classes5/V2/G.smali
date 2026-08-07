.class public final synthetic LV2/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/t;


# instance fields
.field public final synthetic b:LV2/T;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LV2/T;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV2/G;->b:LV2/T;

    iput-object p2, p0, LV2/G;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LV2/G;->b:LV2/T;

    iget-object v1, p0, LV2/G;->c:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, LV2/I;->X(LV2/T;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
