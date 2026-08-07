.class public final synthetic LKf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/a;


# instance fields
.field public final synthetic b:[S


# direct methods
.method public synthetic constructor <init>([S)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKf/f;->b:[S

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LKf/f;->b:[S

    invoke-static {v0}, LKf/g;->W([S)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
