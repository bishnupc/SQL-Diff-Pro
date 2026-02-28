CREATE OR REPLACE PACKAGE Logistics_Manager AS
    -- Global Constants
    c_standard_tax CONSTANT NUMBER := 0.08;
    
    -- Custom Types for bulk processing
    TYPE t_shipment_ids IS TABLE OF NUMBER INDEX BY BINARY_INTEGER;
    
    -- Record structure for shipment details
    TYPE r_shipment_info1 IS RECORD (
        shipment_id   NUMBER,
        status        VARCHAR2(20),
        weight        NUMBER(10,2),
        delivery_date DATE
    );

    -- Main Procedure to process new orders
    PROCEDURE Process_Shipment_Batch1(
        p_batch_ids IN t_shipment_ids,
        p_priority  IN VARCHAR2 DEFAULT 'NORMAL'
    );

    -- Function to calculate estimated delivery
    FUNCTION Get_Delivery_ETA(p_origin VARCHAR2, p_destination VARCHAR2) 
    RETURN DATE;

END Logistics_Manager;
/
